Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E510D6413
	for <lists+linux-um@lfdr.de>; Mon, 14 Oct 2019 15:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VNGWtpIZ0BS63kKqk7YKNGMpOuPBFd+JDTWiqvKwNug=; b=Djs/zHZFtfcCx4XHOPIVRCfNEk
	w5cDLcpaPvPvfO70rkhuP+ZkwiM4KOCQW5NQpDlXnGmT78IdOMVf+RY/LHO3O4ZOqo9Bf20dQfdHk
	JeEktpMy89i1PB9H7cI7PAh4TOfLWfvfZitQ8fqJBQRYMFFExtJAN6MCqgesC8IhYzZI+0PEMZCT3
	UKUGhDYuumOEa3SaXuw9qfD9AmLsbbNxsze7sWWp3o0F5qKSgZeNwYr2QU1E1NhpFs0QbVC2HqEx7
	VeXM68nO0x8VSLUAlib9HhM4/zWn9sBA3FUguXvg1oq8moa3IBwmIAIZSoyv29Dv+jUN8vzr+Vbkv
	gkGtaxyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0Ls-0006lk-Tw; Mon, 14 Oct 2019 13:25:32 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0Lp-0006lF-QD
 for linux-um@lists.infradead.org; Mon, 14 Oct 2019 13:25:31 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iK0Ll-0005mh-Pm; Mon, 14 Oct 2019 13:25:25 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iK0Lj-0002n4-JY; Mon, 14 Oct 2019 14:25:25 +0100
To: linux-um@lists.infradead.org
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Subject: UML not loading on Debian buster with a 5.2 kernel from testing
Message-ID: <fdbab166-f737-15b0-82d2-79fd0ce23ea6@kot-begemot.co.uk>
Date: Mon, 14 Oct 2019 14:25:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_062529_848747_7E9D4DB9 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 940820@bugs.debian.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

VGhpcyBpcyBhIHJlZ3Jlc3Npb24gaW4gdGhlIHJhbmRvbWl6YXRpb24gb2YgdGhlIHZhIHNldHRp
bmcuCgpVTUwgd2lsbCBib290IG9uIGRlYmlhbiA0LjE5IGtlcm5lbCBob3N0wqAgd2l0aCBrZXJu
ZWwucmFuZG9taXplX3ZhX3NwYWNlID0gMgoKVU1MIHdpbGwgbm90IGJvb3QgZGViaWFuIDUuMiBr
ZXJuZWwgaG9zdCB3aXRoIGtlcm5lbC5yYW5kb21pemVfdmFfc3BhY2UgPSAyCgpVTUwgd2lsbCBi
b290IG9uIDUuMiBvbmNlIGtlcm5lbC5yYW5kb21pemVfdmFfc3BhY2UgaXMgc2V0IHRvIDAgb24g
dGhlIGhvc3QuCgpTbyBzb21ldGhpbmcgaGFzIGNoYW5nZWQgaW4gaG93IHJhbmRvbWl6ZSBpcyBp
bXBsZW1lbnRlZCBiZXR3ZWVuIDQuMTkgCmFuZCA1LjIuCgotLSAKQW50b24gUi4gSXZhbm92Cmh0
dHBzOi8vd3d3LmtvdC1iZWdlbW90LmNvLnVrLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtdW0K
