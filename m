Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889CB10A01B
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 15:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZgDpkqM3NikH/WMmx/m+7/eD23SPfu2I/HYQnA9Dq4=; b=XEzkc+94Tm5fhU
	7LlOuZrtol5zh8vvEH95fp2KlDTg8VnJos0F9VcxeWDaj5/esX2roq7ujSlT9oMXn4MSN0E8oPSIa
	bIRlefXjjzo9a1f/twg5UVH+R/4se9UiYFZ4tM8X/jFfylHXSV000nC+TrBWFb93fHImah6W4+8H1
	mCd3+ED9wyp/kQzSDD0HAWPgYcxz27/oIkt0vRrH0OxJkTEuVf4Z2hdsbW3zD/Gvkyjdl3W5XkUj8
	VCOzpn2kUqkqYWgQzGF0QWqj7FN1jEs9xIwAeCBDytg0uDZDvWU0cu8TO0+fjyp/jGwtUSzE8pG3z
	Y4EmllqNjlciEI/11WuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZbet-0005Kn-6R; Tue, 26 Nov 2019 14:17:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbeq-0004kW-QQ
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 14:17:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id k13so9089441pgh.3
 for <linux-um@lists.infradead.org>; Tue, 26 Nov 2019 06:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :user-agent:mime-version;
 bh=B9gEZW9KBbjSLUH43XFMNPk7q5sL7CRFwNtVSQi85QY=;
 b=i+q+l3O8WgRp7bNdQkZ3MI5ipuDBUjK3Gel3G7luigeprpHfBfqguqPOWlvomM4siS
 f3Abdl9wXU7/viFftuUTltqS8SmeFDAHTV+pxYVHIEzkN3aXsALcnvI125bt3cMizKQD
 D7RdUH7YVHgoKXseWQW5MqarWxSzs3UwEIqZGWHc3uP4kd0zWIXvYGbIbCPlL4EAn027
 1YVie3gWBVvkjtIIYI/w6ix9ed1wxjj0pYP+oR7DEOvUu6C8s8B2NoxTnwVf6ipT0oAz
 qiDTKzHrLS//rMNHdOm7ZkSS118SuPH68f2TkTeD17XKZyzYKN7XKyRrFvRv/hand8NO
 VSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:user-agent:mime-version;
 bh=B9gEZW9KBbjSLUH43XFMNPk7q5sL7CRFwNtVSQi85QY=;
 b=eXMy+cRCT8qpO4M9KfpyFBKY3rVOk16xiVigH7HwklTLHKw7i9BfErsjYOuRmOXvA4
 HNarS7MZnvG9I9F7Pk0+a9X5ejtac6Rh+LoNxrzg43Ghn93pU07T9OO56zTt0dHykEEO
 hI2J9czwGO6EbWLAswO4mbgpMGktBH8wEpkjVLoIboUmzG8ESU9G/6TZGzU9eH9NFp+h
 kKxgA5273xKGGL7V7OoX05klcsRMlFLjtPf45Bs7D73RSbufpAVQE7alwlgfWYWDrgoY
 qxQPVfNWmL+dxSlbgTZSrNEbUP+uh+4q5oex/Vbr+adFiIUPUsk4zzfa5xwUy/CkhfDb
 reQQ==
X-Gm-Message-State: APjAAAVKJQ1yWBDMyl1GPL3W8Yy/Gvd/V33yYj63ESM6KXfKD2SPnjUa
 PGF/iTw9oxTE3dLsD+v4V1E=
X-Google-Smtp-Source: APXvYqyR4gCW7aw3CBCL1MpXUB1X7dqU63d3cH8y7i6KOlkWrmC/UzIz0ckB91GfiGeoSJ8IlxhaiQ==
X-Received: by 2002:a62:f243:: with SMTP id y3mr41997909pfl.196.1574777853400; 
 Tue, 26 Nov 2019 06:17:33 -0800 (PST)
Received: from earth-mac.local.gmail.com
 (219x123x138x129.ap219.ftth.ucom.ne.jp. [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id c9sm12834744pfn.65.2019.11.26.06.17.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 26 Nov 2019 06:17:32 -0800 (PST)
Date: Tue, 26 Nov 2019 23:17:26 +0900
Message-ID: <m2v9r6iux5.wl-thehajime@gmail.com>
From: Hajime Tazaki<thehajime@gmail.com>
To: richard.weinberger@gmail.com
Subject: Re: [RFC v2 03/37] lkl: architecture skeleton for Linux kernel library
In-Reply-To: <CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
 <64a5d6c94d331058331af7d191d2cdbe870d009b.1573179553.git.thehajime@gmail.com>
 <CAFLxGvw+w+xmput3xMjKPXPn4hj9opbo+gtV6896hhzDUzQNiA@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/25.3 Mule/6.0
 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_061736_874236_D38EB366 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 2.5 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
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
Cc: linux-arch@vger.kernel.org, levex@linux.com, mattator@gmail.com,
 cem@freebsd.org, tavi.purdila@gmail.com, jiangshanlai@gmail.com,
 staal1978@gmail.com, motomuman@gmail.com, linux-um@lists.infradead.org,
 retrage01@gmail.com, petrosagg@gmail.com, edisonmcastro@hotmail.com,
 xiaoj@google.com, mark@stillwell.me, linux-kernel-library@freelists.org,
 pscollins@google.com, phh@phh.me, sigmaepsilon92@gmail.com,
 luca.dariz@gmail.com, liuyuan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


On Tue, 26 Nov 2019 07:00:33 +0900,
Richard Weinberger wrote:
> 
(snip)
> >
> > Signed-off-by: Andreas Abel <aabel@google.com>
> > Signed-off-by: Conrad Meyer <cem@FreeBSD.org>
> > Signed-off-by: Edison M. Castro <edisonmcastro@hotmail.com>
> > Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
> > Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
> > Signed-off-by: Jens Staal <staal1978@gmail.com>
> > Signed-off-by: Lai Jiangshan <jiangshanlai@gmail.com>
> > Signed-off-by: Levente Kurusa <levex@linux.com>
> > Signed-off-by: Luca Dariz <luca.dariz@gmail.com>
> > Signed-off-by: Mark Stillwell <mark@stillwell.me>
> > Signed-off-by: Matthieu Coudron <mattator@gmail.com>
> > Signed-off-by: Michael Zimmermann <sigmaepsilon92@gmail.com>
> > Signed-off-by: Motomu Utsumi <motomuman@gmail.com>
> > Signed-off-by: Patrick Collins <pscollins@google.com>
> > Signed-off-by: Petros Angelatos <petrosagg@gmail.com>
> > Signed-off-by: Pierre-Hugues Husson <phh@phh.me>
> > Signed-off-by: Xiao Jia <xiaoj@google.com>
> > Signed-off-by: Yuan Liu <liuyuan@google.com>
> > Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
> 
> Can we please have this chain cleaned up?
> Please see process/submitting-patches.rst.

Do you mean "this chain" by the long list of Signed-off-by lines, or
something else ?

We were trying to put all of contributors on the list.  I was failed to
interpret process/submitting-patches.rst on which part is not appropriate.

If you could be more specific, it would be definitely helpful.
# sorry to disturb you...

btw, currently we have more than 15 patches, which I may need to drop some
of them for the first step.


-- Hajime

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
