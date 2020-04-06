Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B4619FBC2
	for <lists+linux-um@lfdr.de>; Mon,  6 Apr 2020 19:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/Zk7N609W4P8PfIuzdPUzUbrfDKoUX+68ka7TruqCE=; b=rCSFXs3OAQ2dc+
	VDlZvYn2bC/Pz+rKtS3PU/a0ES+ag00QFD7l1Dn1GUtHgTB7i/QD1b826ptiQZvwm1kKOAYBFn9jo
	6Qt4J/hiyNJ5afz+A3oIGkD/S7JILpxaPTg1FBR1PXqUQVM+MyISwlOwt8NWM/t+8sOBO1mwVG5T7
	zH6pm4r04cIdHngGyJRHzcrcmx4Bb69uplLfEKlSM2tthPpS1Hyz/Hs6xVo/I5T62I7kIk9/LVtxJ
	MVjL0Caad1nmaALHOqBGV6euqAiKTWUlClOyi+guXRgSXOVJmaog8/J+Q0fcom9a+9WTxpBjSg310
	QCW2cVis30HZBwaV123w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVhE-0005rZ-SS; Mon, 06 Apr 2020 17:38:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVhC-0005r5-AU
 for linux-um@lists.infradead.org; Mon, 06 Apr 2020 17:38:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id v23so70670pfm.1
 for <linux-um@lists.infradead.org>; Mon, 06 Apr 2020 10:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NW0JbksvCosxLplDqnlolxe+HgJ+Wkffm9g3BGVBVPA=;
 b=vvhOCEdFhNmW3PtwMBWoKOvf6VeBuPs0aZ/l9aUV5s3hKrN7lznw+sXtv/fC7Xxk68
 MkFBcSZtZjpfQsMqEQjlM799lbXRFWTirvCcvpQIuVsx/sgs+JtVg1zik/10u9twPqNV
 lyRGzA9xUteNDZ2p7iWjiIO3i0kn6eHiFif7IXQofbgBZt5lznRNxxymBFAuiS1TW2CG
 ASrdf68sfmkUB1uWyJ0zd0K5itr4b6J7IqjoLVrISx3gGX78mnSIxoz17a2oI0se8EyI
 44dgewQI6NNfRL4B/uVme6z9d39jUy8zMtXVzj9S3kSdtkf3q7uSHZ5VOOGrebw3R1hc
 pP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NW0JbksvCosxLplDqnlolxe+HgJ+Wkffm9g3BGVBVPA=;
 b=NDhBSo0gccA0ykq4+ZmI4WndTT+TGDQBGWk5PSFu8NVq1MXdWG/0H07QWJQVaHhETd
 ViwhC3mBqp2RfCRxjz/bNppt7qhQi99V/0b+h/Obi3BFaNWJAGYwnKaAXKvlWDQ0Snkf
 ULbINzuZ1ATYhwGTtPmK74QppT/RnLCc/9LylL/yPVxj2WmX+11dw3DVsXiErORa7+3C
 cO/RkeeS2bJnNeyKPPbiVP2u/s4saNdFQ+ZRq0WKjqmAPbz8YRxj3DwzAAoeG+LJ5Dxh
 9oLVY5nUeuvmrY81mwBuioRMnPp/V1j+l+O70h/+yqo/zaq02m7DJ6fQr96ICl1P5nBB
 9wsQ==
X-Gm-Message-State: AGi0PuaZnKLTBUfDAeWkYT+w9uBa1sI6aG+ezgd9S3zvOwJlCcyWIBMu
 saOYYOPLEE1vmc1ggqVZp+vPykHrYGsAe2ERrzAmwg==
X-Google-Smtp-Source: APiQypJxF0Kj+zKMUsy133YvJhgpE1phMmaPlFg+jdsoa4XYzBCoXjyJnz0iWI5+c+awC7y5yRzsrKqYja9xuObdiwI=
X-Received: by 2002:a63:ff59:: with SMTP id s25mr198012pgk.159.1586194678808; 
 Mon, 06 Apr 2020 10:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200405213357.b6ce1024b276.I7c370e20580d3122c58df5727ee2d6fb53545576@changeid>
In-Reply-To: <20200405213357.b6ce1024b276.I7c370e20580d3122c58df5727ee2d6fb53545576@changeid>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 6 Apr 2020 10:37:49 -0700
Message-ID: <CAFd5g47m5JHV19FjCgSt=FKWYjG3vUQSJ3oa125xD1cYMH8bww@mail.gmail.com>
Subject: Re: [PATCH] arch: um: fix xor.h include
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_103802_400906_F14BEB65 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes.berg@intel.com>, Thomas Meyer <thomas@m3y3r.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Apr 5, 2020 at 12:34 PM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> From: Johannes Berg <johannes.berg@intel.com>
>
> Two independent changes here ended up going into the tree
> one after another, without a necessary rename, fix that.
>
> Reported-by: Thomas Meyer <thomas@m3y3r.de>
> Fixes: f185063bff91 ("um: Move timer-internal.h to non-shared")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Seems pretty straightforward to me.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
