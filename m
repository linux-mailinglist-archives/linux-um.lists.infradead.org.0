Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41F2A2668
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 20:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6Eb43Zz7Q04H13bFCyt4Wn0RzMMKVBxW0oGmQ0OuxY=; b=HNRyBdclqtkAGV
	g7bOMjHy2SVJLV+VcxmQ8+og9kTytDbzLzYckpL27vc3gBav4HpFcrnwJh1tFISt5wPi7NVdlOxUt
	Y1h7NKgUl9RqSfqwvNx+k3PZ0eCnDEhiJLjKwxAyG0y2PqdbcT47ATIRMWJ+35MST1H12MaQTUzdo
	KZ8tbjGChyVCmSOIVvhUewyooWqtMn9Ok3dcukXdDXBC0fwKgcQe7BD+xahHZ6Az1Dc9zQESEUbLu
	R0j4zYMSvhhWeB45432TwG3AhNx7u0SVfXPlfjwRYnQQUEA/en6ALUXojNiPx4UUyZNINuYeTQEXm
	Af7Z14UssqV+5rHdhKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PTL-0002J9-7v; Thu, 29 Aug 2019 18:48:39 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PTI-0002ID-IK
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 18:48:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C4E306083139;
 Thu, 29 Aug 2019 20:48:33 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 1Kd5qkvw6zL2; Thu, 29 Aug 2019 20:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5803C608313E;
 Thu, 29 Aug 2019 20:48:33 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gKEIOWC7ulNc; Thu, 29 Aug 2019 20:48:33 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2C4146083139;
 Thu, 29 Aug 2019 20:48:33 +0200 (CEST)
Date: Thu, 29 Aug 2019 20:48:33 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Dark <dark@volatile.bz>
Message-ID: <899887272.76523.1567104513068.JavaMail.zimbra@nod.at>
In-Reply-To: <20190829135001.6a5ff940@TheDarkness.local>
References: <20190829135001.6a5ff940@TheDarkness.local>
Subject: Re: [PATCH v2] um: Rewrite host RNG driver.
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Rewrite host RNG driver.
Thread-Index: qvTZJZ8xtx+bL8b8xJ5JayPYviXAMg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_114836_760464_28713F65 
X-CRM114-Status: UNSURE (   4.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkRhcmsiIDxkYXJrQHZvbGF0
aWxlLmJ6Pgo+ICsJLy8gUmV0dXJuaW5nIC1FQUdBSU4gdG8gdXNlcnNwYWNlIGlzIG5vdCBuaWNl
Lgo+ICsJaWYgKGVyciA9PSAtRUFHQUlOKQo+ICsJCXJldHVybiAwOwoKSG1tLCBkb2Vzbid0IHRo
aXMgcmVzdWx0IGluIGEgc2hvcnQgcmVhZD8KVGhlIGN1cnJlbnQgZHJpdmVzIHNldHMgdGhlIGNh
bGxpbmcgdGFzayB0byBzbGVlcCBhbmQgd2FrZXMKaXQgdXAgYXMgc29vbiBkYXRhIGlzIGF2YWls
YWJsZSBhZ2Fpbi4gSSdkIGFzc3VtZXMgdGkgaGF2ZSB0aGUKc2FtZSBiZWhhdmlvciBmb3IgdGhl
IG5ldyBkcml2ZXIuCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC11bQo=
